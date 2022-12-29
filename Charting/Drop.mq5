//+------------------------------------------------------------------+
//|                                                         Drop.mq5 |
//|                                    Copyright 2022, Fauzaan Gasim |
//|                                         https://www.fauzaanu.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, Fauzaan Gasim"
#property link      "https://www.fauzaanu.com"
#property version   "1.00"

// Libraries
#include <Trade\OrderInfo.mqh> //Instatiate Library for Orders Information
#include <Trade\PositionInfo.mqh> //Instatiate Library for Positions Information
#include <Trade\Trade.mqh>

// Library Objects
COrderInfo     m_order; //Library for Orders information
CPositionInfo  m_position; // Library for all position features and information
CTrade         m_trade;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
ClosePendings();
closeall();
   
  }
//+------------------------------------------------------------------+
void closeall()
  {

   for(int i = PositionsTotal() - 1; i >= 0; i--) // loop all Open Positions
   {
   
   if(m_position.SelectByIndex(i))  // select a position
        {
         m_trade.PositionClose(m_position.Ticket()); // then delete it --period
         Sleep(100);
        }
   
   
   }
      

  }
  
  
  void ClosePendings()
  {


   for(int i = OrdersTotal() - 1; i >= 0; i--) // loop all orders available
      if(m_order.SelectByIndex(i))  // select an order
        {
         m_trade.OrderDelete(m_order.Ticket()); // delete it --Period
         Sleep(100);
        }

  }