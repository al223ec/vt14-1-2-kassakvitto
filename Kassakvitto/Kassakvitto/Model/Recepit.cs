using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto
{
    public class Recepit
    {
        private double _subtotal; 
        public double Subtotal
        {
            get
            {
                return _subtotal;
            }
            private set
            {
                if (value < 0)
                {
                    throw new ArgumentOutOfRangeException("Subtotal får inte vara 0 eller mindre");
                }
                _subtotal = value;
            }
        }
        public double DiscountRate { get; private set; }
        public double MoneyOff { get { return Subtotal * DiscountRate; }}
        public double Total { get { return Subtotal - MoneyOff; }}

        public Recepit(double subtotal) 
        {
            Calculate(subtotal); 
        }
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;
            if (Subtotal < 500) { return; }
            else if (Subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (Subtotal < 5000)
            {
                DiscountRate = 0.1;
            }
            else
            {
                DiscountRate = 0.15; 
            }
        }
        public override string ToString()
        {
            return String.Format("Totalt: {0}kr Rabattsats: {1}% Rabatt: {2}kr Att betala: {3}kr", Subtotal, DiscountRate, MoneyOff, Total); 
        }
    }
}