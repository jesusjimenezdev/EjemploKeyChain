import UIKit
import SwiftKeychainWrapper

class ViewController: UIViewController {
    
    
    @IBOutlet weak var valor: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func guardar(_ sender: Any) {
        let guardar : Bool = KeychainWrapper.standard.set(valor.text!, forKey: "miLLavero")
        print("LLAVERO GUARDADO",guardar )
    }
    
    @IBAction func mostrar(_ sender: Any) {
        let mostrar : String? = KeychainWrapper.standard.string(forKey: "miLLavero")
        print("MI LLAVERO ES:", mostrar ?? "NADA QUE MOSTRAR")
    }
    
    @IBAction func eliminar(_ sender: Any) {
        let eliminar : Bool = KeychainWrapper.standard.removeObject(forKey: "miLLavero")
        print("LLAVERO ELIMINADO:", eliminar)
    }
    


}

