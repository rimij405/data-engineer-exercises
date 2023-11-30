import unittest
import app

# Define the test suite.
class TestApp(unittest.TestCase):
    """
    Unit tests for the exercise 1.
    """

    def test_inside_container_exists(self):
        """
        Test if the `inside_container` variable exists in the application.
        """
        self.assertTrue('inside_container' in dir(app))

    def test_ping_expects_200_response(self):
        """
        Test if the `ping()` Response returns a 200 status code.
        """
        r = app.ping()
        self.assertEqual(r.status_code, 200)

# Run the unittest if this file is executed directly.
if __name__ == '__main__':
    unittest.main(verbosity=2)
