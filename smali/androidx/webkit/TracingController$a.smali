.class Landroidx/webkit/TracingController$a;
.super Ljava/lang/Object;
.source "TracingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/TracingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Landroidx/webkit/TracingController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/webkit/internal/TracingControllerImpl;

    invoke-direct {v0}, Landroidx/webkit/internal/TracingControllerImpl;-><init>()V

    sput-object v0, Landroidx/webkit/TracingController$a;->a:Landroidx/webkit/TracingController;

    return-void
.end method
