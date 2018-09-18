from django.db import models


class Tournament(models.Model):
    name = models.CharField(max_length=50)
    host_countries = models.CharField(max_length=50)
    start_date = models.DateField()
    end_date = models.DateField()
    teams_number = models.IntegerField()
    champion = models.CharField(max_length=50)
    description = models.CharField(max_length=50)

    def __str__(self):
        return self.description


class Team(models.Model):
    country = models.CharField(max_length=50)
    name = models.CharField(max_length=50)
    coach = models.CharField(max_length=50)
    year = models.CharField(max_length=4)

    def __str__(self):
        return self.name


class Match(models.Model):
    date = models.DateField()
    stadium = models.CharField(max_length=100)
    team1 = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='team1')
    team2 = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='team2')
    tournament = models.ForeignKey(Tournament, on_delete=models.CASCADE, related_name='match_tournament')

    def __str__(self):
        return '{}-{} ({})'.format(self.team1, self.team2, self.date)


class Goal(models.Model):
    player = models.CharField(max_length=100)
    time = models.IntegerField()
    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    team = models.ForeignKey(Team, on_delete=models.CASCADE)
    tournament = models.ForeignKey(Tournament, on_delete=models.CASCADE, related_name='goal_tournament')

    def __str__(self):
        return 'At {} by {}'.format(self.match, self.player)
