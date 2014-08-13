import UIKit

class ViewController: UIViewController {

    let accessToken = "<your Mapbox API access token here>"

    override func viewDidLoad() {
        super.viewDidLoad()

        let styleJSON = NSString.stringWithContentsOfFile(NSBundle.mainBundle().pathForResource("style", ofType: "json"),
                                                          encoding: NSString.defaultCStringEncoding(),
                                                          error: nil)

        let mapView = MGLMapView(frame: view.bounds,
                                 styleJSON: styleJSON,
                                 accessToken: accessToken)

        mapView.setCenterCoordinate(CLLocationCoordinate2DMake(46.049900, -122.095678),
                zoomLevel: 12,
                animated: false)

        view.addSubview(mapView)
    }
}
