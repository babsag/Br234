.class final Landroidx/work/impl/utils/futures/AbstractFuture$d;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final a:Landroidx/work/impl/utils/futures/AbstractFuture$d;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/impl/utils/futures/AbstractFuture$d;

    new-instance v1, Landroidx/work/impl/utils/futures/AbstractFuture$d$a;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Landroidx/work/impl/utils/futures/AbstractFuture$d$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/futures/AbstractFuture$d;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/work/impl/utils/futures/AbstractFuture$d;->a:Landroidx/work/impl/utils/futures/AbstractFuture$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Landroidx/work/impl/utils/futures/AbstractFuture$d;->b:Ljava/lang/Throwable;

    return-void
.end method
