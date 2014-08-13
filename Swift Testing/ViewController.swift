import UIKit

class ViewController: UIViewController {

    var mapView: MGLMapView?
    let accessToken = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let styleJSON = NSString.stringWithContentsOfFile(NSBundle.mainBundle().pathForResource("style", ofType: "json"),
                                                          encoding: NSString.defaultCStringEncoding(),
                                                          error: nil)

        mapView = MGLMapView(frame: view.bounds,
                             styleJSON: styleJSON,
                             accessToken: accessToken)

        view.addSubview(mapView!)

        mapView!.setCenterCoordinate(CLLocationCoordinate2DMake(46.049900, -122.095678),
                 zoomLevel: 12,
                 animated: false)
    }
}
