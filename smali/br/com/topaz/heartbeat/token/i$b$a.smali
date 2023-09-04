.class Lbr/com/topaz/heartbeat/token/i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/token/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$b;->b(Lbr/com/topaz/l/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/l/l;

.field final synthetic b:Lbr/com/topaz/f0/c;

.field final synthetic c:Lbr/com/topaz/l/o;

.field final synthetic d:Lbr/com/topaz/l/e0;

.field final synthetic e:Lbr/com/topaz/r0/b;

.field final synthetic f:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

.field final synthetic g:Lbr/com/topaz/heartbeat/utils/OFDException;

.field final synthetic h:Lbr/com/topaz/u0/r;

.field final synthetic i:Lbr/com/topaz/heartbeat/token/i$b;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$b;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/o;Lbr/com/topaz/l/e0;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->i:Lbr/com/topaz/heartbeat/token/i$b;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->a:Lbr/com/topaz/l/l;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->b:Lbr/com/topaz/f0/c;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->c:Lbr/com/topaz/l/o;

    iput-object p5, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->d:Lbr/com/topaz/l/e0;

    iput-object p6, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->e:Lbr/com/topaz/r0/b;

    iput-object p7, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->f:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iput-object p8, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p9, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->h:Lbr/com/topaz/u0/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    new-instance v10, Lbr/com/topaz/heartbeat/token/c;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->a:Lbr/com/topaz/l/l;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->b:Lbr/com/topaz/f0/c;

    iget-object v4, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->c:Lbr/com/topaz/l/o;

    iget-object v5, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->d:Lbr/com/topaz/l/e0;

    iget-object v6, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->e:Lbr/com/topaz/r0/b;

    iget-object v7, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->f:Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    iget-object v8, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->g:Lbr/com/topaz/heartbeat/utils/OFDException;

    iget-object v9, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->h:Lbr/com/topaz/u0/r;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lbr/com/topaz/heartbeat/token/c;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/l;Lbr/com/topaz/f0/c;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;Lbr/com/topaz/r0/b;Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V

    new-instance v0, Lbr/com/topaz/heartbeat/token/i$b$a$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/heartbeat/token/i$b$a$a;-><init>(Lbr/com/topaz/heartbeat/token/i$b$a;)V

    invoke-virtual {v10, v0}, Lbr/com/topaz/heartbeat/token/c;->a(Lbr/com/topaz/heartbeat/token/c$b;)V

    invoke-virtual {v10}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$b$a;->i:Lbr/com/topaz/heartbeat/token/i$b;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$b;->b:Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;->onFailure(I)V

    return-void
.end method
