.class public Lbr/com/topaz/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/p/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/m0/d;

.field private d:Lbr/com/topaz/p/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/a/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/a/a;->b:Lbr/com/topaz/l/f0;

    new-instance v0, Lbr/com/topaz/m0/e;

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v2, p0, Lbr/com/topaz/a/a;->b:Lbr/com/topaz/l/f0;

    invoke-direct {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-direct {v0, p1, v1}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    iput-object v0, p0, Lbr/com/topaz/a/a;->c:Lbr/com/topaz/m0/d;

    new-instance p1, Lbr/com/topaz/p/f;

    iget-object v0, p0, Lbr/com/topaz/a/a;->b:Lbr/com/topaz/l/f0;

    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v2, p0, Lbr/com/topaz/a/a;->b:Lbr/com/topaz/l/f0;

    invoke-direct {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-direct {p1, v0, v1}, Lbr/com/topaz/p/f;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    iput-object p1, p0, Lbr/com/topaz/a/a;->d:Lbr/com/topaz/p/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Success request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 7

    new-instance v6, Lbr/com/topaz/p/b;

    iget-object v1, p0, Lbr/com/topaz/a/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lbr/com/topaz/a/a;->b:Lbr/com/topaz/l/f0;

    iget-object v4, p0, Lbr/com/topaz/a/a;->c:Lbr/com/topaz/m0/d;

    iget-object v5, p0, Lbr/com/topaz/a/a;->d:Lbr/com/topaz/p/f;

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/p/b;-><init>(Landroid/content/Context;Lbr/com/topaz/p/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/m0/d;Lbr/com/topaz/p/f;)V

    invoke-virtual {v6}, Lbr/com/topaz/p/b;->b()V

    return-void
.end method
