import 'package:cache_sample/presentation/model/movie_state.dart';
import 'package:cache_sample/presentation/provider/movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.scheduleFrameCallback((_) {
      context.read<MovieProvider>().fetchAllMovies();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Selector<MovieProvider,MovieState>(
        selector: (_,provider) => provider.movieState,
        builder: (context, state, _) {
          return state.whenOrNull(loading: () {
            return const Center(child: CircularProgressIndicator());
          },
          data: (data){
            return Center(child: Text(data.length.toString()),);
          },error: (msg){
            return Center(child: Text(msg.toString()),);
          }) ?? const SizedBox.shrink();
        },
      ),
    );
  }
}