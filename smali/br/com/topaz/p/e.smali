.class public Lbr/com/topaz/p/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/p/c;

.field private b:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/p/c;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/p/e;->a:Lbr/com/topaz/p/c;

    iput-object p2, p0, Lbr/com/topaz/p/e;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/l/i;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lbr/com/topaz/l/i;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/p/e;->a:Lbr/com/topaz/p/c;

    invoke-virtual {p1}, Lbr/com/topaz/l/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/topaz/p/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbr/com/topaz/l/i;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-object v1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/p/e;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "026"

    invoke-virtual {v1, p1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method
