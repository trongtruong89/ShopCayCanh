using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Lucene.Net.Analysis;
using Lucene.Net.Analysis.Standard;
using Lucene.Net.Documents;
using Lucene.Net.Index;
using Lucene.Net.QueryParsers;
using Lucene.Net.Search;
using Lucene.Net.Store;
using System.Threading.Tasks;
using ShopCayCanh.Models;

namespace ShopCayCanh.App_Start
{    
    public class LuceneSearchConfig
    {
        public static Directory directory;
        public static Analyzer analyzer;
        public static IndexWriter writer;

        public static void InitializeSearch()
        {
            string directoryPath = AppDomain.CurrentDomain.BaseDirectory + @"\App_Data\LuceneIndexes";
            directory = FSDirectory.Open(directoryPath);
            analyzer = new StandardAnalyzer(Lucene.Net.Util.Version.LUCENE_30);
            writer = new IndexWriter(directory, analyzer, IndexWriter.MaxFieldLength.UNLIMITED);
            Task.Factory.StartNew(() => CreateIndex());
        }

        private static void CreateIndex()
        {
            ShopCayCanhDbContext context = new ShopCayCanhDbContext();
            var products = context.Products.Where(p => p.status == 1).ToList();
            Document doc;
            foreach (var p in products)
            {
                doc = new Document();
                doc.Add(new Field("pID", p.ID.ToString(), Field.Store.YES, Field.Index.NOT_ANALYZED));
                doc.Add(new Field("pName", p.name, Field.Store.YES, Field.Index.NOT_ANALYZED));
                doc.Add(new Field("pDesc", p.detail, Field.Store.YES, Field.Index.ANALYZED));
                writer.AddDocument(doc);
                doc = null;
            }
            writer.Optimize();
            writer.Commit();
            writer.Dispose();
        }

        public static void FinalizeSearch()
        {
            directory.Dispose();
        }


    }
}