.class public final synthetic Lcom/combateafraude/documentdetector/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/i;->a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/i;->a:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->J(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
