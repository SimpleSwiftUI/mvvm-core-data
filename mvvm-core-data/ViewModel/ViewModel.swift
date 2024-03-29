//
//  ViewModel.swift
//  mvvm-core-data
//
//  Created by Robert Brennan on 2/24/24.
//

import Foundation
import SwiftUI
import CoreData

class ViewModel: ObservableObject {
    private var managedObjectContext: NSManagedObjectContext
    
    @Published var showCoverView = false
    @Published var animalEntities: [AnimalEntity] = []
    @Published var refreshID = UUID()   // trick to force view refresh on older iOS versions
    
    init(context: NSManagedObjectContext) {
        self.managedObjectContext = context
    }
        
    func coreDataAnimalEntitiesFetch() {
        let request: NSFetchRequest<AnimalEntity> = AnimalEntity.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(keyPath: \AnimalEntity.updatedAt, ascending: true)]
        do {
            animalEntities = try managedObjectContext.fetch(request)
            refreshID = UUID()
        } catch {
            print("coreDataAnimalEntitiesFetch error: \(error.localizedDescription)")
        }
    }
    
    func addAnimal(animal: String) {
        coreDataAnimalEntitiesFetch()
        let newAnimal = AnimalEntity(context: managedObjectContext)
        newAnimal.animal = animal
        newAnimal.updatedAt = Date.now
        
        do {
            try managedObjectContext.save()
            coreDataAnimalEntitiesFetch()
            print("New animal entity saved.")
        } catch {
            print("addAnimal error: \(error.localizedDescription)")
        }
    }
}

