from football_api.tournaments.models import Match, Team, Goal, Tournament
from rest_framework.serializers import ModelSerializer, HyperlinkedIdentityField, StringRelatedField


class TournamentSerializer(ModelSerializer):

    class Meta:
        model = Tournament
        fields = ('name', 'host_countries', 'start_date', 'end_date', 'teams_number', 'champion', 'description')


class TeamSerializer(ModelSerializer):

    class Meta:
        model = Team
        fields = ('country', 'name', 'coach', 'year')


class MatchSerializer(ModelSerializer):
    team1 = StringRelatedField()
    team2 = StringRelatedField()

    class Meta:
        model = Match
        fields = ('date', 'stadium', 'team1', 'team2')


class GoalSerializer(ModelSerializer):
    team = StringRelatedField()
    match = StringRelatedField()
    tournament = StringRelatedField()

    class Meta:
        model = Goal
        fields = ('player', 'time', 'team', 'match', 'tournament')
