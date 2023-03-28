import '../models/team.dart';
import '../repositories/teams_repository.dart';

class HomeController {
  late TeamsRepository repository;

  List<Team> get teams => repository.teams;

  HomeController() {
    repository = TeamsRepository();
  }
}
