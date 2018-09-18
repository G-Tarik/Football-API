from rest_framework.test import APILiveServerTestCase, RequestsClient
from rest_framework import status
from football_api.tournaments.models import Tournament, Team, Match, Goal


class MarsCupTest(APILiveServerTestCase):

    def setUp(self):
        self.client = RequestsClient()
        self.tournament_data = {'name': 'Mars2100',
                                'host_countries': 'Tomorrowland',
                                'start_date': '2100-01-01',
                                'end_date': '2100-01-02',
                                'teams_number': 100,
                                'champion': 'Some Marvel hero',
                                'description': 'Mars world cup 2100'
        }
        self.tournament = Tournament.objects.create(**self.tournament_data)
        self.team1_data = {'country': 'aaa', 'name': 'dreamteam1', 'coach': 'coach1', 'year': '2100'}
        self.team2_data = {'country': 'bbb', 'name': 'dreamteam2', 'coach': 'coach2', 'year': '2100'}
        self.team1 = Team.objects.create(**self.team1_data)
        self.team2 = Team.objects.create(**self.team2_data)

        self.match_data = {'date': '2012-07-01',
                           'stadium': 'Warsaw',
                           'team1': self.team1,
                           'team2': self.team2,
                           'tournament': self.tournament}
        self.match = Match.objects.create(**self.match_data)

        self.goal_data = {'player': 'IronMan',
                          'time': 10,
                          'match': self.match,
                          'team': self.team1,
                          'tournament': self.tournament}
        self.goal = Goal.objects.create(**self.goal_data)

    def test_teams_retrieve(self):
        response = self.client.get(self.live_server_url + '/tournaments/teams/' + str(self.team1.id))
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.json(), self.team1_data)

    def test_matches_list(self):
        response = self.client.get(self.live_server_url + '/tournaments/matches')
        resp_data = response.json()[0]
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(resp_data['stadium'], self.match.stadium)

    def test_goals_retrieve(self):
        response = self.client.get(self.live_server_url + '/tournaments/Mars2100/goals/' + str(self.goal.id))
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.json()['player'], self.goal.player)
