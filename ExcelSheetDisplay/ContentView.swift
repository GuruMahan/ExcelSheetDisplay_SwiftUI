//
//  ContentView.swift
//  ExcelSheetDisplay
//
//  Created by Guru Mahan on 05/01/23.
//

import SwiftUI
import QuickLook

struct ContentView: View {
   @State var fileurl : URL?
 
    @State var showingPreview = false
    
    var body: some View {
        Button("Preview File"){
            self.showingPreview = true
            fileurl =    Bundle.main.url(forResource: "Weekly time sheet", withExtension: "xlsx")
        }
        .quickLookPreview($fileurl)
      //  .sheet(isPresented: $showingPreview) {
//            VStack(spacing: 0) {
//                           HStack {
//                               Button("Done") {
//
//                                   self.showingPreview = true
//                               }
//
//                               Spacer()
//                           }
//                           .padding()
//
////                if let url = fileurl{
////                      //PreviewController(isPresented: self.$showingPreview, url:url)
////                }
//
//                       }
       // }
    }
}

//struct PreviewController: UIViewControllerRepresentable {
// // typealias UIViewType = p
//
//    @Binding var isPresented: Bool
//
//    let url: URL
//
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(parent: self)
//    }
//
//    func makeUIViewController(context: Context) ->  UINavigationController {
//        let controller = QLPreviewController()
//        controller.dataSource = context.coordinator
//        controller.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: context.coordinator, action: #selector(context.coordinator.dismiss))
//        let navigationController = UINavigationController(rootViewController: controller)
//        return navigationController
//    }
//
//    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
//
//    }
//
//    class Coordinator: QLPreviewControllerDataSource {
//        let parent: PreviewController
//
//        init(parent: PreviewController) {
//            self.parent = parent
//        }
//        @objc func dismiss() {
//            parent.isPresented = false
//        }
//        func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
//            return 1
//        }
//
//        func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
//            return parent.url as NSURL
//        }
//    }
//}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
