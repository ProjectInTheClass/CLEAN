//
//  Constant.swift
//  CLEAN
//
//  Created by 김장현 on 2018. 5. 28..
//  Copyright © 2018년 김장현. All rights reserved.
//

import Foundation
import UIKit


class Constants: NSObject{
    
    struct Database {
        static let db_name = "test_db1"
        
        //base table name
        static let interface_te_name = "EVENT"
        
        static let te_name = interface_te_name + " "
        static let j_te_eid = interface_te_name + "(EID)"
        
        //*************
        //create query
        //*************        
        //common create
        static let insert = "INSERT INTO "
        static let insert_contant = "(SID, ENAME, FRONTDATE, CYCLE, ALARM, MEMO) values "
        static let create_exists = "CREATE TABLE IF NOT EXISTS "
        
        //base column
        static let te_column = "( EID INTEGER PRIMARY KEY AUTOINCREMENT, SID INTEGER, ENAME TEXT, FRONTDATE TEXT, CYCLE TEXT, ALARM INTEGER, MEMO TEXT )"
        static let mkt_event = create_exists + te_name + te_column
    }
    struct DB_event{
        static let select_ed = "SELECT EID, ENAME, FRONTDATE, CYCLE, ALARM, MEMO "
        static let select_cl = "SELECT EID, ENAME, FRONTDATE "
        static let from_ed = "FROM " + Constants.Database.te_name
        static let condition_eid = "WHERE EID = "
        static let condition_sid = "WHERE SID = "
        
        static let sql_set_detail = select_ed + from_ed + condition_eid
        static let sql_collections = select_cl + from_ed + condition_sid
        static let sql_event_insert = Constants.Database.insert + Constants.Database.te_name + Constants.Database.insert_contant
    }
    struct DetailSet {
        static let alarm_data = ["소리", "진동", "무음"]
        static let month = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"]
        static let day = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"]
        static let memo_place_holder = "memo..."
        static let date_format = "MMMM - dd - YYYY"
        static let alarm_picker_num = 1
        static let cycle_picker_num = 2
    }
    struct TextShow{
        static let space_holder_color : UIColor = UIColor.lightGray
        static let text_color : UIColor = UIColor.black
    }
    struct Button{
        static let done = "done"
    }

}
