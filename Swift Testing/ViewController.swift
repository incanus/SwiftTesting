import UIKit

class ViewController: UIViewController {

    let accessToken = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = MGLMapView(frame: view.bounds,
                                 accessToken: accessToken)

        mapView.setCenterCoordinate(CLLocationCoordinate2DMake(46.049900, -122.095678),
                zoomLevel: 12,
                animated: false)

        view.addSubview(mapView)
    }
}
