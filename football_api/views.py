from rest_framework.reverse import reverse
from rest_framework.views import APIView
from rest_framework.response import Response


class APIRootView(APIView):
    """
    Football browsable API.
    Example: http://exaample.com/tournaments/euro2012/matches
             http://exaample.com/tournaments/euro2012/goals
    Searching: <endpoint url>/?search=<pattern>
    Filtering: <endpoint url>/?<field_name>=<value>
    """
    def get(self, request):
        data = {
                'title': 'Football browsable API.',
                'endpoints': {
                    'tournaments': reverse('tournaments:api-root', request=request),
                    'teams': reverse('tournaments:team-list', request=request),
                    'matches': reverse('tournaments:match-list', request=request),
                    'goals': reverse('tournaments:goal-list', request=request),
                }
        }
        return Response(data)
