.class public final synthetic Lcom/combateafraude/documentdetector/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/PreviewActivity;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/PreviewActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/l;->a:Lcom/combateafraude/documentdetector/PreviewActivity;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/l;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/l;->a:Lcom/combateafraude/documentdetector/PreviewActivity;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/l;->b:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/combateafraude/documentdetector/PreviewActivity;->q(Lcom/combateafraude/documentdetector/PreviewActivity;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
