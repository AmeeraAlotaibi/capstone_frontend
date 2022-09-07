
import 'package:capstone_frontend/models/trainer.dart';
import 'package:capstone_frontend/pages/trainer_profile.dart';
import 'package:capstone_frontend/providers/trainer_provider.dart';
import 'package:capstone_frontend/services/trainer_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(16),
            child: TypeAheadField<Trainer>(
  textFieldConfiguration: const TextFieldConfiguration(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: 'Search Trainer',
                  ),
                ),
  suggestionsCallback:(pattern) async {
      return await context.read<TrainerProvider>().search(pattern);
  }, 
   noItemsFoundBuilder: (context) =>  Container(
             color: Theme.of(context).cardColor ,

                  height: 100,
                  child:  Center(
                    child: Text(
                      'No Users Found.',
                     style: Theme.of(context).textTheme.bodyText2 ,
                    ),
                  ),
                ),
  itemBuilder: (context, suggestion) {
      return Container(
        color: Theme.of(context).cardColor ,
        child: ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
             child: Image.network(suggestion.image ??
                                      "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg"
                                , fit: BoxFit.cover,),
          ),
          title: Text(suggestion.user.first_name!, style: Theme.of(context).textTheme.bodyText2 ,)
          // subtitle: Text(suggestion),
          
        ),
      );
  },
  onSuggestionSelected: (suggestion) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TrainerProfile(trainerId: suggestion.user.id)
     
      ),
      ); 
     
  },
),
    );
  }
}
