import unittest

class TestS3(unittest.TestCase):
    def test_bucket_name_value(self):
        bucket = 'CashewsCloudSkills'

        self.assertEqual(bucket, 'CashewsCloudSkills')

    def test_region_value(self):
        region = 'us-east-1'

        self.assertEqual(region, 'us-east-1')

    def test_bucket_name_is_string(self):
        bucket = 'CashewsCloudSkills'

        self.assertTrue(type(bucket), str)

    def test_region_is_string(self):
        region = 'us-east-1'

        self.assertTrue(type(region), str)

if __name__ == '__main__':
    unittest.main()