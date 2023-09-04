.class Lbr/com/topaz/heartbeat/token/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i;->a(Landroid/content/Context;Lbr/com/topaz/l/l;Lbr/com/topaz/heartbeat/token/Token$DismissCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbr/com/topaz/heartbeat/token/Token$DismissCallback;

.field final synthetic c:Lbr/com/topaz/heartbeat/token/i;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i;Landroid/content/Context;Lbr/com/topaz/heartbeat/token/Token$DismissCallback;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$d;->c:Lbr/com/topaz/heartbeat/token/i;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/i$d;->a:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/i$d;->b:Lbr/com/topaz/heartbeat/token/Token$DismissCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbr/com/topaz/l/l;)V
    .locals 9

    new-instance v3, Lbr/com/topaz/f0/c;

    invoke-direct {v3}, Lbr/com/topaz/f0/c;-><init>()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v4

    new-instance v5, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v5}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v6, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v6, v4}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    new-instance v7, Lbr/com/topaz/u0/s;

    invoke-direct {v7}, Lbr/com/topaz/u0/s;-><init>()V

    new-instance v8, Lbr/com/topaz/heartbeat/token/d;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lbr/com/topaz/heartbeat/token/d;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance p1, Lbr/com/topaz/heartbeat/token/i$d$a;

    invoke-direct {p1, p0}, Lbr/com/topaz/heartbeat/token/i$d$a;-><init>(Lbr/com/topaz/heartbeat/token/i$d;)V

    invoke-virtual {v8, p1}, Lbr/com/topaz/heartbeat/token/d;->a(Lbr/com/topaz/heartbeat/token/d$b;)V

    invoke-virtual {v8}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
