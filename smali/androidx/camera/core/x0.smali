.class public final synthetic Landroidx/camera/core/x0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/w2$f;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/w2$f;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/x0;->a:Landroidx/camera/core/w2$f;

    iput-object p2, p0, Landroidx/camera/core/x0;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/x0;->a:Landroidx/camera/core/w2$f;

    iget-object v1, p0, Landroidx/camera/core/x0;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Landroidx/camera/core/w2$c;->a(Landroidx/camera/core/w2$f;Ljava/lang/Exception;)V

    return-void
.end method
