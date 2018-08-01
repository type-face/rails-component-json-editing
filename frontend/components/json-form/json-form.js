import "@json-editor/json-editor";
import "./json-form.css";

const element = document.getElementById("json-form");
const editor = new JSONEditor(element, {
  form_name_root: element.dataset.root,
  startval: JSON.parse(element.dataset.metaData),
  schema: {
    type: "object",
    properties: {
      test1: { type: "string" }
    }
  }
});

editor.validate();
