//
//  BookListViewController.swift
//  mshinKursach
//
//  Created by Grigory Don on 26.10.2022.
//

import UIKit

class BookListViewController: UITableViewController {
    
    private var bookList = Book.getBooks()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        bookList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "book", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let book = bookList[indexPath.row]
        
        content.text = book.name
        content.secondaryText = book.author
        
        cell.contentConfiguration = content
        
        return cell
    }

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.bookList = bookList[indexPath.row]
        
    }

}
