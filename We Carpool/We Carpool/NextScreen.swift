/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that hosts an `MKMapView`.
*/

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
            view.showsUserLocation = true
            let coordinate = CLLocationCoordinate2D(
                latitude: 37.25753493178952, longitude: -121.96310609449056)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)

            let region = MKCoordinateRegion(center: view.userLocation.location?.coordinate ?? coordinate, span: span)
            view.setRegion(region, animated: true)
  let searchRequest = MKLocalSearch.Request()
     searchRequest.naturalLanguageQuery = "6242 Empress Ct, San Jose, CA, 95129"
    }
   
}


#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif

