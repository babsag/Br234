.class Lbr/com/topaz/w/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/w/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/w/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/w/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/w/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/w/a$a;->a:Lbr/com/topaz/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/w/f;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/w/a$a;->a:Lbr/com/topaz/w/a;

    invoke-static {v0, p1}, Lbr/com/topaz/w/a;->a(Lbr/com/topaz/w/a;Lbr/com/topaz/w/f;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lbr/com/topaz/w/a;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
