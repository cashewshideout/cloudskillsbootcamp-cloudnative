package test

import (
	"fmt"
	"time"
	"testing"
	http_helper "github.com/gruntwork-io/terratest/modules/http-helper"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformWebserverExample(t *testing.T){

	// The values to pass into Terraform CLI
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{

			// Path to where example Terraform code is located
			TerraformDir: "../examples/webserver",

			// Variables to pass to Terraform code using -var options
			Vars: map[string]interface{}{
				"region": "us-west-2",
				"servername": "testterrwebserver",
			},
	})

	// Run a Terraform init and apply with the Terraform options
	terraform.InitAndApply(t, terraformOptions)

	// Run Terraform Destroy at the end of the test
	defer terraform.Destroy(t, terraformOptions)

	publicIp := terraform.Output(t, terraformOptions, "public_ip")

	url := fmt.Sprintf("http://%s:8080", publicIp)

	// Send an Http Request to the url of the newly created instance
	// t(test), TLS options(not used), HTTP status expected, Body text expected, Number of Retries, How long between retries
	http_helper.HttpGetWithRetry(t, url, nil, 200, "I made a Terraform Module", 30, 5*time.Second)
}