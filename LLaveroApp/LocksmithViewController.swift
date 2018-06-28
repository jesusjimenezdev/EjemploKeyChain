
import UIKit
import Locksmith

class LocksmithViewController: UIViewController {

    @IBOutlet weak var valor: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func guardar(_ sender: Any) {
        do {
            try Locksmith.saveData(data: ["mykey": valor.text!, "mykey2": "OTRA COSA"], forUserAccount: "usuario")
            print("GUARDO")
        } catch let error as NSError {
            print("NO GUARDO", error)
        }
    }
    
    @IBAction func mostrar(_ sender: Any) {
        let mostrar = Locksmith.loadDataForUserAccount(userAccount: "usuario")
        print("MIS LLAVES SON:", mostrar?["mykey"] ?? "NADA QUE MOSTRAR")
    }
    
    @IBAction func actualizar(_ sender: Any) {
        do {
            try Locksmith.updateData(data: ["mykey": valor.text!], forUserAccount: "usuario")
            print("ACTUALIZO")
        } catch let error as NSError {
            print("NO ACTUALIZO", error)
        }
    }
    
    @IBAction func eliminar(_ sender: Any) {
        do {
            try Locksmith.deleteDataForUserAccount(userAccount: "usuario")
            print("ELIMINO")
        } catch let error as NSError {
            print("NO ELIMINO", error)
        }
    }
    

}
