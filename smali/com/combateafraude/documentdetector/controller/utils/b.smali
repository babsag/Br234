.class public final synthetic Lcom/combateafraude/documentdetector/controller/utils/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/utils/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/utils/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/utils/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/utils/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/combateafraude/documentdetector/controller/utils/SentryHelper;->c(Ljava/lang/String;Ljava/lang/String;Lio/sentry/Scope;)V

    return-void
.end method
