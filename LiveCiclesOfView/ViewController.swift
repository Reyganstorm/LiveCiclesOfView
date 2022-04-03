//
//  ViewController.swift
//  LiveCiclesOfView
//
//  Created by Руслан Штыбаев on 03.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // Вызывается настолько рано что ничего еще не выгружено в память даже свойств класса
    override func awakeFromNib() {
        super.awakeFromNib()
        // доступен для любого элемента интерфейса
    }
    
    // Используется при ручной инициализации вью, когда работаем без сториборда
    override func loadView() { 
    }
    
    // свойства(аутлеты) инициализируются раньше чем view будет загружено в памяти

    // Вызывается после загрузки View в память
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Существует для настройки элементы интерфейса или поменять внешний вид
        // Можем вызвать только один раз
    }
    
    // Вызывается перед появлением View
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    // Метод вызывается при каждом появлением View
    // Будет вызываться перед каждым появлением View на экране
    // В этом методе работют с настройкой элементов интерфейса
    
    // Вызывается при растоновке констрейнтов
    override func updateViewConstraints() {
        // необходимо переобпределять только в том случае когда требуется оптимизироваться изменение констрейнтов
        super.updateViewConstraints()
    }

    // Вызывается перед расстановкой всех элементов на экране
    // сама view уже загружена в память и после этого в данном классе мы можем изменить все размеры интерфеса под view
    override func viewWillLayoutSubviews() {
        // не требует вызова у родительского класса super.viewWillLayoutSubviews()
        // можно изменить размеры элементов интерфеса
        // так же вызывается при повороте экрана
    }
    
    //Тут срабатывает Auto Layout
    
    // Вызывается после появления view на экране
    override func viewDidLayoutSubviews() {
    }
    
    // вызывается при измненении размеров view
    override func viewDidAppear(_ animated: Bool) {
        // Пользователь увидит все действия которые произойдет в данном методе
        // для различных анимаций
    }
    
    // Вызывается при изменении размеров view
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
    }

    // Вызывается перед скрытием вью
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // Вызывается перед скрытием вью
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    // Вызывается гда вью выгружается из памяти
    deinit {}
}

