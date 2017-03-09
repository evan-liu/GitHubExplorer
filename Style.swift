import UIKit

extension UIColor {

    /// Scene background color
    @nonobjc static let sceneBackground: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    /// Scene horizontal line, or row separator color
    @nonobjc static let sceneSeparator: UIColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)

    /// Navigation/Tab/Status bar background color
    @nonobjc static let barBackground: UIColor = #colorLiteral(red: 0.2196078431, green: 0.2549019608, blue: 0.2823529412, alpha: 1)
    /// Navigation/Tab/Status bar content tint color
    @nonobjc static let barTint: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

    /// Normal text color
    @nonobjc static let text: UIColor = #colorLiteral(red: 0.3647058824, green: 0.4196078431, blue: 0.4549019608, alpha: 1)
    /// Header text color
    @nonobjc static let header: UIColor = #colorLiteral(red: 0.2196078431, green: 0.2549019608, blue: 0.2823529412, alpha: 1)
    /// Secondary content color
    @nonobjc static let secondary: UIColor = #colorLiteral(red: 0.6352941176, green: 0.662745098, blue: 0.6901960784, alpha: 1)
    /// Highlight content color
    @nonobjc static let highlight: UIColor = #colorLiteral(red: 0.9490196078, green: 0.2784313725, blue: 0, alpha: 1)

}

struct Style {

    static func setupNaviBar(_ bar: UINavigationBar) {
        bar.barTintColor = .barBackground
        bar.tintColor = .barTint
        bar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.barTint]
    }

    static func setupTabBar(_ bar: UITabBar) {
        bar.barTintColor = .barBackground
        bar.tintColor = .barTint
    }

}
