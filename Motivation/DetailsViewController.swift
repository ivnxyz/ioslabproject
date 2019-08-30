//
//  DetailsViewController.swift
//  Motivation
//
//  Created by Iván Martínez on 8/30/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var author: Author!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        title = author.name

        // Asignar el largo de la lista al número de páginas del pageControl
        pageControl.numberOfPages = author.imagesNames.count
        
        // Iterar desde 0 hasta el número de elementos en la lista
        for i in 0..<author.imagesNames.count {
            // Inicializar un nuevo imageView
            let imageView = UIImageView()
            // Modificar el estilo del imageView
            imageView.contentMode = .scaleAspectFit
            // Asignar una imagen al imageView
            imageView.image = UIImage(named: author.imagesNames[i])
            
            let xPos = CGFloat(i) * self.view.bounds.size.width
            imageView.frame = CGRect(x: xPos, y: 0, width: view.frame.size.width, height: scrollView.frame.size.height)
            
            scrollView.contentSize.width = view.frame.size.width * CGFloat(i+1)
            scrollView.addSubview(imageView)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x/scrollView.frame.width
        pageControl.currentPage = Int(page)
    }

}
