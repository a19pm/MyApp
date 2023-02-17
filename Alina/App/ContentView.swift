//
//  ContentView.swift
//  Alina
//
//  Created by Dmitry on 25/01/2023.
//

import SwiftUI

struct ContentView: View {
  struct Page: Identifiable {
    let id = UUID()
    let title: String
    var destination: AnyView
    init<V: View>(_ title: String, destination: V) {
      self.title = title
      self.destination = AnyView(destination)
    }
  }

  let pages: [Page] = [
    //    Page("Popular movie screen", destination: PopularMovieScreen())
    Page("PANDANA: Sign In", destination: SignIn()),
    Page("PANDANA: Opening", destination: OpeningScreen()),
    Page("PANDANA: Home", destination: HomeScreen()),
    // Page("PANDANA: Choose Content", destination: ChooseContent()),
    Page("PANDANA: Movie Detail", destination: MovieDetailScreem()),
    //  Page("PANDANA: Bottom Sheet", destination: BottomSheet()),
    Page("PANDANA: Ticket", destination: TicketScreen()),
    Page("PANDANA: Trailer", destination: TrailerScreen()),
    Page("PANDANA: Favourite", destination: FavouriteScreen()),
    Page("PANDANA: Personalize", destination: PersonalizeScreen()),
    Page("PANDANA: Profile", destination: ProfileScreen()),
    Page("PANDANA: Settings", destination: SettingsProfile()),
    Page("PANDANA: Notifications", destination: NotificationsScreen()),
    Page("PANDANA: Search", destination: SearchScreen()),
    Page("PANDANA: Search Result", destination: SearchResultScreen()),
    Page("PANDANA: Actress Screen", destination: ActressScreen()),
    Page("PANDANA: Actress Screen2", destination: ActressScreen2()),
    Page("PANDANA: Actress Screen3", destination: ActressScreen3()),
    Page("PANDANA: Promo", destination: PromoScreen()),

    Page("DAILOZ: Splash", destination: DailozSplash()),
    Page("DAILOZ: Login", destination: Login()),
    Page("DAILOZ: Sing UP", destination: SingUP()),
    Page("DAILOZ: Home", destination: Home()),
    Page("DAILOZ: Task", destination: Task()),
    Page("DAILOZ: Graphic", destination: Graphic()),
    Page("DAILOZ: Profile 1", destination: Profile1()),
    // Page("DAILOZ: Profile Pop Up", destination: ProfilePopUp(showSetting: <#T##Bool#>)),
    Page("DAILOZ: Setting", destination: Setting()),
    Page("DAILOZ: Setting Pop Up", destination: SettingPopUp()),
    Page("DAILOZ: Profile Pop Up Log Out", destination: ProfilwPopUpLogOut()),
    Page("DAILOZ: Profile Pop Up LogOut", destination: ProfilePopUpLogOut()),
    Page("DAILOZ: Profile Create Board", destination: ProfileCreateBoard()),
    Page("DAILOZ: Completed", destination: Completed()),
    Page("DAILOZ: Completed Pop Up", destination: CompletedPopUp()),
    Page("DAILOZ: Pending", destination: Pending()),
    Page("DAILOZ: Pending Pop Up", destination: PendingPopUp()),
    Page("DAILOZ: Canceled", destination: Canceled()),
    Page("DAILOZ: Canceled Pop Up", destination: CanceledPopUp()),
    Page("DAILOZ: On Going", destination: OnGoing()),
    Page("DAILOZ: On Going Pop Up", destination: OnGoingPopUp()),
    Page("DAILOZ: Filter", destination: Filter()),
    Page("DAILOZ: Calendar 2", destination: Calendar2()),
    Page("DAILOZ: Calendar 3", destination: Calendar3()),
    Page("DAILOZ: Calendar 4", destination: Calendar4()),
    Page("DAILOZ: Add Task Time", destination: AddTaskTime()),
    Page("DAILOZ: Task Empty", destination: TaskEmpty()),
    //  Page("DAILOZ: Add Task", destination: AddTask()),
    Page("DAILOZ: Add Task Pop Up", destination: AddTaskPopUp()),
    Page("DAILOZ: Add Task New Tag", destination: AddTaskNewTag()),
    Page("DAILOZ: Task Pop Up", destination: TaskPopUp()),
    Page("DAILOZ: Detail", destination: Detail()),
    Page("DAILOZ: Completed", destination: Completed()),
    Page("DAILOZ: Completed Pop Up", destination: CompletedPopUp()),
    Page("DAILOZ: Personal", destination: Personal()),
    // Page("DAILOZ: AddP ersonal", destination: AddPersonal()),
    Page("DAILOZ: Work", destination: Work()),
    Page("DAILOZ: Private", destination: Private()),
    //  Page("DAILOZ: Add Private", destination: AddPrivate()),
    Page("DAILOZ: Meeting", destination: Meeting()),
    Page("DAILOZ: Event", destination: Event()),
    //  Page("DAILOZ: Add Event", destination: AddEvent()),

    Page("PIXELS: Splash", destination: PixelsSplashView()),
    Page("PIXELS: News", destination: PixelsNews()),
    Page("PIXELS: Headlines", destination: Headlines()),
    Page("PIXELS: Notification", destination: Notification()),
    Page("PIXELS: Summary Stats", destination: SummaryStats()),

    Page("CONTACTS: Contacts", destination: Contacts()),

    Page("BANK APP: Good Morning, Jenny", destination: GoodMorningJenny()),
    Page("BANK APP: Big Save", destination: BigSave()),
    Page("BANK APP: Well Done", destination: WellDone()),

    Page("STEAM: Safety", destination: SteamSafetyView()),
    Page("STEAM: Community", destination: SteamCommunityView()),
    Page("STEAM: Chat", destination: SteamChaat()),
    Page("STEAM: Store", destination: SteamStore()),
  ]
  var body: some View {
    NavigationView {
      List {
        ForEach(pages) { page in
          NavigationLink(page.title, destination: page.destination)
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
