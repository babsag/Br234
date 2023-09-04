.class Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalStoreDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/datasource/LocalStoreDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lcom/ca/mas/core/datasource/LocalStoreDataSource;


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/datasource/LocalStoreDataSource;Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;->b:Lcom/ca/mas/core/datasource/LocalStoreDataSource;

    const-string p1, "LS.db"

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p1, "DROP TABLE IF EXISTS LocalStore"

    .line 3
    iput-object p1, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE LocalStore (key TEXT NOT NULL,value BLOB NOT NULL,content_type TEXT NOT NULL,segment INTEGER NOT NULL,created_by TEXT NOT NULL,created_date DATETIME  DEFAULT CURRENT_TIMESTAMP, last_updated_date DATETIME  DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY (key,segment,created_by) )"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS LocalStore"

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
