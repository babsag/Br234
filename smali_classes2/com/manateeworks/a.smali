.class public final synthetic Lcom/manateeworks/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/manateeworks/ScannerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/manateeworks/ScannerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/manateeworks/a;->a:Lcom/manateeworks/ScannerActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/manateeworks/a;->a:Lcom/manateeworks/ScannerActivity;

    invoke-virtual {v0, p1}, Lcom/manateeworks/ScannerActivity;->g(Landroid/view/View;)V

    return-void
.end method
