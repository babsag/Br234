.class public Lbr/com/topaz/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;
.implements Lbr/com/topaz/h/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/h/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/h/c$a;

.field private c:Lbr/com/topaz/s/a;

.field private d:Lbr/com/topaz/f0/b;

.field private e:Lbr/com/topaz/l/f0;

.field private f:Lbr/com/topaz/m0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/h/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/h/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/h/c;->b:Lbr/com/topaz/h/c$a;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object p2

    iput-object p2, p0, Lbr/com/topaz/h/c;->c:Lbr/com/topaz/s/a;

    new-instance p2, Lbr/com/topaz/f0/a;

    invoke-direct {p2}, Lbr/com/topaz/f0/a;-><init>()V

    iput-object p2, p0, Lbr/com/topaz/h/c;->d:Lbr/com/topaz/f0/b;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object p2

    iput-object p2, p0, Lbr/com/topaz/h/c;->e:Lbr/com/topaz/l/f0;

    new-instance p2, Lbr/com/topaz/m0/e;

    new-instance v0, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v1, p0, Lbr/com/topaz/h/c;->e:Lbr/com/topaz/l/f0;

    invoke-direct {v0, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-direct {p2, p1, v0}, Lbr/com/topaz/m0/e;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    iput-object p2, p0, Lbr/com/topaz/h/c;->f:Lbr/com/topaz/m0/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    const-string v1, "6"

    const-string v2, "CEHB"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "7"

    const-string v2, "4.6.0.1074349"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lbr/com/topaz/h/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/h/c;->b:Lbr/com/topaz/h/c$a;

    invoke-interface {v0}, Lbr/com/topaz/h/c$a;->b()V

    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 14

    new-instance v7, Lbr/com/topaz/h/e;

    iget-object v1, p0, Lbr/com/topaz/h/c;->c:Lbr/com/topaz/s/a;

    iget-object v3, p0, Lbr/com/topaz/h/c;->d:Lbr/com/topaz/f0/b;

    iget-object v4, p0, Lbr/com/topaz/h/c;->e:Lbr/com/topaz/l/f0;

    new-instance v5, Lbr/com/topaz/l/g0;

    iget-object v9, p0, Lbr/com/topaz/h/c;->a:Landroid/content/Context;

    new-instance v10, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v10}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    iget-object v0, p0, Lbr/com/topaz/h/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object v11

    new-instance v12, Lbr/com/topaz/u0/h;

    invoke-direct {v12}, Lbr/com/topaz/u0/h;-><init>()V

    new-instance v13, Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v0, p0, Lbr/com/topaz/h/c;->e:Lbr/com/topaz/l/f0;

    invoke-direct {v13, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lbr/com/topaz/l/g0;-><init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/u0/h;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    iget-object v6, p0, Lbr/com/topaz/h/c;->f:Lbr/com/topaz/m0/d;

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lbr/com/topaz/h/e;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/b;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/m0/d;)V

    invoke-virtual {v7, p0}, Lbr/com/topaz/h/e;->a(Lbr/com/topaz/h/e$a;)V

    invoke-virtual {v7}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/h/c;->b:Lbr/com/topaz/h/c$a;

    invoke-interface {v0}, Lbr/com/topaz/h/c$a;->onSuccess()V

    return-void
.end method
