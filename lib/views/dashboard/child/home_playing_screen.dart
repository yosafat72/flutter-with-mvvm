import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_drive/model/movie.dart';
import 'package:test_drive/view_model/playing/now_playing_vm.dart';
import 'package:test_drive/views/widgets/movie_horizontal_list_loading_widget.dart';

import '../../../service/remote/api_end_points.dart';
import '../../../service/response/status.dart';

class HomePlayingScreen extends StatefulWidget{
  const HomePlayingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePlayingScreen();

}

class _HomePlayingScreen extends State<HomePlayingScreen>{

  //ViewModel
  final NowPlayingViewModel viewModel = NowPlayingViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        child: _observePopularMovie(),
      )
    );
  }

  @override
  void initState(){
    viewModel.fetchNowPlaying();
    super.initState();
  }

  Widget _observePopularMovie(){
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Consumer<NowPlayingViewModel>(
        builder: ((context, value, child){
          switch(viewModel.apiResponse.status){
            case Status.loading:
              return const MovieHorizontalListLoadingWidget();
            case Status.success:
              return _listMovie(viewModel.apiResponse.data?.results);
            case Status.error:
              return const MovieHorizontalListLoadingWidget();
            default:
              break;
          }
          return Container();
        }),
      ),
    );
  }

  Widget _listMovie(List<Result>? results){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: results?.take(5).length,
      itemBuilder: (context, position){
        return _listMovieItem(results![position]);
      },
    );
  }

  Widget _listMovieItem(Result result){
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 165,
              height: 200,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                child: Image.network("${ApiEndPoints().imagePosterBaseUrl}${result.posterPath}", fit: BoxFit.fill),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                width: 150,
                child: Text(
                  "${result.title}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 35,
                width: 75,
                child: OutlinedButton(onPressed: (){}, child: const Text("Pesan")),
              ),
            )
          ],
        )
    );
  }

}