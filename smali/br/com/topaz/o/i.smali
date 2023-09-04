.class public Lbr/com/topaz/o/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/o/j$b;


# static fields
.field public static b:I = 0x0

.field public static c:I = 0x1


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/o/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/o/i;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 8

    iput-object p1, p0, Lbr/com/topaz/o/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v2

    new-instance v7, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v7, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    :try_start_0
    invoke-interface {v2}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    new-instance v1, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    invoke-static {p1}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object p1

    new-instance v3, Lbr/com/topaz/k/b;

    invoke-direct {v3, v1, p1}, Lbr/com/topaz/k/b;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;)V

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->j()Lbr/com/topaz/o/l;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/o/l;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    new-instance p1, Lbr/com/topaz/u0/s;

    invoke-direct {p1}, Lbr/com/topaz/u0/s;-><init>()V

    new-instance v4, Lbr/com/topaz/o/b;

    invoke-direct {v4, v2, v3}, Lbr/com/topaz/o/b;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V

    new-instance v0, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;

    invoke-direct {v0}, Lbr/com/topaz/heartbeat/wrapper/DollyScannerWrapper;-><init>()V

    new-instance v5, Lbr/com/topaz/o/f;

    invoke-direct {v5, v0, v7, p1}, Lbr/com/topaz/o/f;-><init>(Lbr/com/topaz/o/k;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance p1, Lbr/com/topaz/o/j;

    move-object v0, p1

    move-object v3, v7

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lbr/com/topaz/o/j;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/o/b;Lbr/com/topaz/o/f;I)V

    invoke-virtual {p1, p0}, Lbr/com/topaz/o/j;->a(Lbr/com/topaz/o/j$b;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    goto :goto_0

    :cond_0
    new-instance p1, Lbr/com/topaz/o/b;

    invoke-direct {p1, v2, v3}, Lbr/com/topaz/o/b;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/k/b;)V

    invoke-virtual {p1}, Lbr/com/topaz/o/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "178"

    invoke-virtual {v7, p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/o/h;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    const-string v1, "6"

    const-string v2, "DLS"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "7"

    invoke-virtual {v0, v1, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/o/i;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/o/i$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/o/i$a;-><init>(Lbr/com/topaz/o/i;)V

    invoke-virtual {p1, v0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
