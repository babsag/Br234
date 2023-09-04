.class Lcom/ca/mas/foundation/auth/MASApplication$c;
.super Landroid/os/AsyncTask;
.source "MASApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/auth/MASApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Landroid/widget/ImageView;

.field private c:Ljava/net/HttpURLConnection;

.field private d:Ljava/io/InputStream;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/16 v3, 0x18

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/ca/mas/foundation/auth/MASApplication$c;->a:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "Failed to clear up connection."

    const-string v1, "MAS"

    .line 1
    sget-object v2, Lcom/ca/mas/foundation/auth/MASApplication$c;->a:Landroid/util/LruCache;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    return-object v2

    .line 2
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    aget-object v4, p1, v3

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->c:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 5
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 6
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 7
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->d:Ljava/io/InputStream;

    .line 8
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->e:Landroid/graphics/Bitmap;

    .line 9
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->d:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->c:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 14
    sget-boolean v4, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v4, :cond_4

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 15
    :try_start_2
    sget-boolean v4, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "Error in downloading the image"

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->c:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .line 20
    sget-boolean v4, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v4, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 22
    sget-object v1, Lcom/ca/mas/foundation/auth/MASApplication$c;->a:Landroid/util/LruCache;

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->e:Landroid/graphics/Bitmap;

    return-object p1

    .line 24
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 26
    :cond_6
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->c:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_7

    .line 27
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 28
    sget-boolean v3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v3, :cond_7

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_7
    :goto_3
    throw p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$c;->b:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
