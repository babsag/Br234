.class Lcom/manateeworks/ScannerActivity$a;
.super Ljava/lang/Object;
.source "ScannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/ScannerActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/manateeworks/ScannerActivity$a;->a:Lcom/manateeworks/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/manateeworks/ScannerActivity$a;->a:Lcom/manateeworks/ScannerActivity;

    invoke-static {p1}, Lcom/manateeworks/ScannerActivity;->a(Lcom/manateeworks/ScannerActivity;)V

    return-void
.end method
