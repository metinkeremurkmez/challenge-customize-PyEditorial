from django.test import TestCase
from django.urls import reverse


class TestViews(TestCase):
    def test_index_view(self):
        response = self.client.get(reverse('content:index'))
        self.assertEqual(response.status_code, 200)

    def test_blog_view(self):
        response = self.client.get(reverse('content:blog'))
        self.assertEqual(response.status_code, 200)
