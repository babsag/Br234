.class Lcom/manateeworks/ScannerActivity$c;
.super Ljava/lang/Object;
.source "ScannerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/ScannerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/manateeworks/ScannerActivity;


# direct methods
.method constructor <init>(Lcom/manateeworks/ScannerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manateeworks/ScannerActivity$c;->a:Lcom/manateeworks/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/manateeworks/ScannerActivity;->a:Z

    .line 2
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity$c;->a:Lcom/manateeworks/ScannerActivity;

    invoke-static {v0}, Lcom/manateeworks/ScannerActivity;->b(Lcom/manateeworks/ScannerActivity;)V

    return-void
.end method
