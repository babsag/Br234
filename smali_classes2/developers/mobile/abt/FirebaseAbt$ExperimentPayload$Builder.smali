.class public final Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FirebaseAbt.java"

# interfaces
.implements Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;",
        ">;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->J()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Ldevelopers/mobile/abt/FirebaseAbt$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOngoingExperiments(Ljava/lang/Iterable;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;)",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->G(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 9
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    .line 10
    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->F(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->F(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->E(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->E(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public clearActivateEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->p(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearClearEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->s(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearExperimentId()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->L(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearExperimentStartTimeMillis()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->d(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearOngoingExperiments()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->H(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearOverflowPolicy()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->C(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearSetEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->m(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTimeToLiveMillis()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->k(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTimeoutEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->v(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTriggerEvent()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->f(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTriggerTimeoutMillis()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->i(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTtlExpiryEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->y(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearVariantId()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->a(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public getActivateEventToLog()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLog()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getClearEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentStartTimeMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentStartTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOngoingExperiments(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOngoingExperiments(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    move-result-object p1

    return-object p1
.end method

.method public getOngoingExperimentsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOngoingExperimentsCount()I

    move-result v0

    return v0
.end method

.method public getOngoingExperimentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 2
    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOngoingExperimentsList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOverflowPolicy()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOverflowPolicy()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getOverflowPolicyValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOverflowPolicyValue()I

    move-result v0

    return v0
.end method

.method public getSetEventToLog()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getSetEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToLiveMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeToLiveMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeoutEventToLog()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEventBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEventBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerTimeoutMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTtlExpiryEventToLog()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVariantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariantIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeOngoingExperiments(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->I(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;I)V

    return-object p0
.end method

.method public setActivateEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->o(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->q(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setClearEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->r(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->t(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExperimentId(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->K(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExperimentIdBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->M(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExperimentStartTimeMillis(J)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->c(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V

    return-object p0
.end method

.method public setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    .line 6
    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->D(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->D(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public setOverflowPolicy(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->B(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)V

    return-object p0
.end method

.method public setOverflowPolicyValue(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->A(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;I)V

    return-object p0
.end method

.method public setSetEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->l(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->n(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimeToLiveMillis(J)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->j(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V

    return-object p0
.end method

.method public setTimeoutEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->u(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->w(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTriggerEvent(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->e(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTriggerEventBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->g(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTriggerTimeoutMillis(J)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->h(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V

    return-object p0
.end method

.method public setTtlExpiryEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->x(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->z(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVariantId(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->N(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVariantIdBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->b(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
