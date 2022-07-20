import 'package:cache_sample/presentation/home_screen.dart';
import 'package:cache_sample/presentation/model/movie_state.dart';
import 'package:cache_sample/presentation/provider/movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../helpers/dummy_object.dart';
import '../helpers/test_helper.mocks.dart';

void main(){
  late MockMovieProvider mockMovieProvider;

  setUp((){
    mockMovieProvider = MockMovieProvider();
  });


  Widget _makeTestableWidget(Widget body){
    return ChangeNotifierProvider<MovieProvider>.value(value: mockMovieProvider,
    child: MaterialApp(
      home: body,
    ), );
  }
  
  testWidgets('page should display center progress bar when loading', (WidgetTester tester) async{
    //arrange
    when(mockMovieProvider.movieState).thenReturn(const MovieState.loading());
    //act
    final centerFinder = find.byType(Center);
    final progressFinder = find.byType(CircularProgressIndicator);


    await tester.pumpWidget(_makeTestableWidget(const HomeScreen()));
    //assert
    expect(centerFinder, equals(findsOneWidget));
    expect(progressFinder, equals(findsOneWidget));


  });

  testWidgets('page should display center text when error occur', (WidgetTester tester) async{
    //arrange
    when(mockMovieProvider.movieState).thenReturn(const MovieState.error(''));
    //act
    final centerFinder = find.byType(Center);
    final textFinder = find.byType(Text);
    final progressFinder = find.byType(CircularProgressIndicator);

    await tester.pumpWidget(_makeTestableWidget(const HomeScreen()));    
    //assert
    expect(centerFinder, equals(findsOneWidget));
    expect(textFinder, equals(findsOneWidget));
    expect(progressFinder, equals(findsNothing));
  });

}