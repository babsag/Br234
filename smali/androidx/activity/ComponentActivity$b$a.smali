.class Landroidx/activity/ComponentActivity$b$a;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity$b;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

.field final synthetic c:Landroidx/activity/ComponentActivity$b;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity$b;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$b$a;->c:Landroidx/activity/ComponentActivity$b;

    iput p2, p0, Landroidx/activity/ComponentActivity$b$a;->a:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$b$a;->b:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$b$a;->c:Landroidx/activity/ComponentActivity$b;

    iget v1, p0, Landroidx/activity/ComponentActivity$b$a;->a:I

    iget-object v2, p0, Landroidx/activity/ComponentActivity$b$a;->b:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    invoke-virtual {v2}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(ILjava/lang/Object;)Z

    return-void
.end method
