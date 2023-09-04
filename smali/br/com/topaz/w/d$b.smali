.class Lbr/com/topaz/w/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/w/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/w/d;


# direct methods
.method constructor <init>(Lbr/com/topaz/w/d;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/w/d$b;->a:Lbr/com/topaz/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/w/d$b;->a:Lbr/com/topaz/w/d;

    invoke-virtual {v0}, Lbr/com/topaz/w/d;->d()V

    iget-object v0, p0, Lbr/com/topaz/w/d$b;->a:Lbr/com/topaz/w/d;

    invoke-static {v0}, Lbr/com/topaz/w/d;->c(Lbr/com/topaz/w/d;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method
