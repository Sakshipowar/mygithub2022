public class Pagination1 
{
private integer totalRecs=0;
private integer OffsetSize=0;
private integer LimitSize=5;
    
    public Pagination1()
    {
        totalRecs = [select count() from account];
    }
    public List<account> getacclist()
    {
       List<account> acc = Database.Query('SELECT Name,website,AnnualRevenue,description,Type FROM account LIMIT '+LimitSize+' OFFSET '+OffsetSize);
        return acc;
    }
    public void previous()
    {
        OffsetSize = OffsetSize - LimitSize;
    }
    public void next()
    {
        OffsetSize = OffsetSize + LimitSize;
    }
}