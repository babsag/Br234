.class public Lbr/com/topaz/n0/c;
.super Lbr/com/topaz/n0/b;
.source "SourceFile"


# instance fields
.field private final c:Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;

.field private final d:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lbr/com/topaz/n0/b;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    iput-object p1, p0, Lbr/com/topaz/n0/c;->c:Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;

    iput-object p3, p0, Lbr/com/topaz/n0/c;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/Signature;)Lbr/com/topaz/n0/d;
    .locals 2

    new-instance v0, Lbr/com/topaz/n0/d;

    invoke-direct {v0}, Lbr/com/topaz/n0/d;-><init>()V

    invoke-virtual {p0, p1}, Lbr/com/topaz/n0/b;->c(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/n0/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbr/com/topaz/n0/b;->d(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/n0/d;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbr/com/topaz/n0/b;->b(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/n0/d;->a(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lbr/com/topaz/n0/d;->a(I)V

    return-object v0
.end method

.method public a()[Landroid/content/pm/Signature;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/n0/c;->c:Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;->a()Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/n0/c;->c:Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/wrapper/SignatureWrapper;->a()Landroid/content/pm/Signature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/n0/c;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "200"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
