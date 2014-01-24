using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
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
                _subtotal = value;
            }
        }
        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Total { get; private set; }

        public Recepit(double subtotal) 
        {
            Calculate(subtotal); 
        }
        public void Calculate(double subtotal)
        {

        }
    }
}