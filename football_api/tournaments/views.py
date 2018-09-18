from rest_framework import filters
from rest_framework.viewsets import ReadOnlyModelViewSet
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework_extensions.mixins import NestedViewSetMixin
from football_api.tournaments.models import Match, Team, Goal, Tournament
from football_api.tournaments.serializers import MatchSerializer, TeamSerializer, GoalSerializer, TournamentSerializer


class TournamentViewSet(NestedViewSetMixin, ReadOnlyModelViewSet):
    """
    API endpoint for viewing tournaments.
    Filters available by start_date.
    Search is done by fields name, host_countries, start_date, description.
    Examples:
        details: http://localhost/tournaments/euro2012
        filter: http://localhost/tournaments/?start_date=2012-06-01
        search: http://localhost/tournaments/?search=advoca
    """
    queryset = Tournament.objects.all()
    serializer_class = TournamentSerializer
    filter_backends = (DjangoFilterBackend, filters.SearchFilter)
    filter_fields = ('start_date',)
    search_fields = ('name', 'host_countries', 'start_date', 'description')
    lookup_field = 'name'


class TeamViewSet(NestedViewSetMixin, ReadOnlyModelViewSet):
    """
    API endpoint for viewing teams.
    Filters available by country and year.
    Search by name, coach, year
    Examples:
        list:   http://localhost/tournaments/teams
        filter: http://localhost/tournaments/teams/?country=POL
        search: http://localhost/tournaments/teams/?search=advoca
    """
    queryset = Team.objects.all()
    serializer_class = TeamSerializer
    filter_backends = (DjangoFilterBackend, filters.SearchFilter)
    filter_fields = ('country', 'year')
    search_fields = ('name', 'coach', 'year')


class MatchViewSet(NestedViewSetMixin, ReadOnlyModelViewSet):
    """
    API endpoint for viewing matches.
    Search by date, stadium, team name
    Examples:
        list by tournament: http://localhost/tournaments/euro2012/matches
        list all:           http://localhost/tournaments/matches
        search: http://localhost/tournaments/matches/?search=warsaw
    """
    queryset = Match.objects.all().order_by('-date')
    serializer_class = MatchSerializer
    filter_backends = (filters.SearchFilter,)
    search_fields = ('date', 'stadium', 'team1__name', 'team2__name')


class GoalViewSet(NestedViewSetMixin, ReadOnlyModelViewSet):
    """
    API endpoint for viewing goals.
    Filters available by team__name.
    Search by player, team, date.
    Examples:
        list by tournament: http://localhost/tournaments/euro2012/goals
        list all:           http://localhost/tournaments/goals
        filter: http://localhost/tournaments/euro2012/goals/?team__name=POL
        search: http://localhost/tournaments/euro2012/goals/?search=07-01
    """
    queryset = Goal.objects.all()
    serializer_class = GoalSerializer
    filter_backends = (DjangoFilterBackend, filters.SearchFilter)
    filter_fields = ('team__name',)
    search_fields = ('player', 'team__name', 'match__date')
