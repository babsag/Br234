.class public Lbr/com/topaz/p/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lbr/com/topaz/p/g;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lbr/com/topaz/l/f0;

.field private b:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/p/f;->a:Lbr/com/topaz/l/f0;

    iput-object p2, p0, Lbr/com/topaz/p/f;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method


# virtual methods
.method protected varargs a([Lbr/com/topaz/p/g;)Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/p/f;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lbr/com/topaz/p/e;

    new-instance v2, Lbr/com/topaz/p/d;

    invoke-direct {v2}, Lbr/com/topaz/p/d;-><init>()V

    iget-object v3, p0, Lbr/com/topaz/p/f;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v1, v2, v3}, Lbr/com/topaz/p/e;-><init>(Lbr/com/topaz/p/c;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/l/i;

    invoke-virtual {v1, v2}, Lbr/com/topaz/p/e;->a(Lbr/com/topaz/l/i;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lbr/com/topaz/l/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Lbr/com/topaz/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    iget-object v0, p0, Lbr/com/topaz/p/f;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "020"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lbr/com/topaz/p/g;

    invoke-virtual {p0, p1}, Lbr/com/topaz/p/f;->a([Lbr/com/topaz/p/g;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
