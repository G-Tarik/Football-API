from django.conf.urls import url, include
from rest_framework.routers import DefaultRouter, APIRootView
from rest_framework_extensions.routers import NestedRouterMixin
from football_api.tournaments import views


class Tournaments(APIRootView):
    """
    Football tournaments API root.
    """


class CustomRouter(NestedRouterMixin, DefaultRouter):
    APIRootView = Tournaments


router = CustomRouter()

router.register('matches', views.MatchViewSet)
router.register('teams', views.TeamViewSet)
router.register('goals', views.GoalViewSet)

tournaments_router = router.register('', views.TournamentViewSet)
tournaments_router.register(
    'matches', views.MatchViewSet,
    base_name='tournament-matches',
    parents_query_lookups=['tournament__name'])
tournaments_router.register(
    'goals', views.GoalViewSet,
    base_name='tournament-goals',
    parents_query_lookups=['tournament__name'])


app_name = 'Tournaments'
urlpatterns = [
    url(r'^', include(router.urls)),
]
