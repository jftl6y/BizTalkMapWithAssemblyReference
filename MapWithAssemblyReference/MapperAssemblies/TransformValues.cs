using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MapperAssemblies
{
    public class TransformValues
    {
        public string AddTodayToValue(string input)
        {
            return $"{input} today is {DateTime.Now.DayOfWeek.ToString()}";
        }
        public string ConcatValues(string val1, string val2)
        {
            return string.Concat(val1, val2);
        }
    }
}
