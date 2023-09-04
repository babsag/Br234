.class Lbr/com/topaz/b0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/b0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/b0/f;


# direct methods
.method constructor <init>(Lbr/com/topaz/b0/f;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/b0/f$a;->a:Lbr/com/topaz/b0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/b0/f$a;->a:Lbr/com/topaz/b0/f;

    invoke-static {v0}, Lbr/com/topaz/b0/f;->a(Lbr/com/topaz/b0/f;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/b0/f$a;->a:Lbr/com/topaz/b0/f;

    invoke-static {v0}, Lbr/com/topaz/b0/f;->a(Lbr/com/topaz/b0/f;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
